import pandas as pd
import tensorflow as tf
import numpy as np

def pad(
    df: pd.DataFrame
):
    df_padded = pd.DataFrame()
    for column in df.columns:
        df_column = df[column].to_list()
        df_column_padded = tf.keras.preprocessing.sequence.pad_sequences(df_column,maxlen=20,padding='pre',truncating='pre')
        df_column_padded = df_column_padded.tolist()
        df_padded[column] = df_column_padded
    return df_padded

def iterate_over_df(
    ### iterator function as input for the tensorflow generator `from_generator` function
    df: pd.DataFrame
):  
    df['empty_list'] = [[] for _ in range(len(df))]
    def caller():
        for _,j in df.iterrows():
            yield(j['product_id-list_seq']),j['empty_list']
    return caller

def ds_from_df(
    ### generate tensorflow object from dataframe
    df: pd.DataFrame
):
    output_shape_x = (
        tf.TensorShape([None,])
    )
    df = tf.data.Dataset.from_generator(
        iterate_over_df(df),
        output_types=((tf.int32),tf.int32),
        output_shapes = (output_shape_x, tf.TensorShape([None,]))
    )
    return df

def data_to_dict(
    ### create a dictionary tensor dataframe as input into the model
    df_list: list,
    df_len: int,
    chosen_features: list
):
    df_list = (tf.stack([df_list[i][0] for i in range(df_len)]),tf.stack([df_list[i][-1] for i in range(df_len)]))
    dict_features = {}
    # dict_targets = {}
    if len(chosen_features) == 1:
        dict_features[chosen_features[0]] = df_list[0]
        dict_features['target'] = df_list[-1]
    else:
        for i in range(len(df_list[0]),-1):
            dict_features[chosen_features[i]] = df_list[0][i]
    return dict_features

def get_test_dataset(
    ### function to call all other functions necessary to build the dataset
    ### to input into the model
    df,
    batch_size,
    df_len,
    chosen_features,
    as_dict = False
):
    df = pad(df)
    df = ds_from_df(df)
    # df = pad_dataset(df,df_len)
    df = data_to_dict(list(df),df_len,chosen_features)
    if as_dict == False:
        df = tf.data.Dataset.from_tensor_slices(df).batch(batch_size)
    steps = int(np.floor(df_len/batch_size))

    # return ds, steps
    return df, steps