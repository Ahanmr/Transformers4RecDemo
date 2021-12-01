feature {
  name: "price_log_norm-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: FLOAT
  float_domain {
    name: "price_log_norm-list_seq"
    min: -17.176351827798428
    max: 1.7566816406751988
  }
  annotation {
  }
}
feature {
  name: "product_recency_days_log_norm-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: FLOAT
  float_domain {
    name: "product_recency_days_log_norm-list_seq"
    min: -6.913329620541532
    max: 0.44860732556877836
  }
  annotation {
  }
}
feature {
  name: "category_id-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: INT
  int_domain {
    name: "category_id-list_seq"
    min: 2
    max: 566
    is_categorical: true
  }
  annotation {
   tag: "list"
  }
}
feature {
  name: "relative_price_to_avg_categ_id-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: FLOAT
  float_domain {
    name: "relative_price_to_avg_categ_id-list_seq"
    min: -0.9999999999998073
    max: 38.912767871764885
  }
  annotation {
  }
}
feature {
  name: "category_code-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: INT
  int_domain {
    name: "category_code-list_seq"
    min: 1
    max: 124
    is_categorical: true
  }
  annotation {
   tag: "list"
  }
}
feature {
  name: "brand-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: INT
  int_domain {
    name: "brand-list_seq"
    min: 1
    max: 2640
    is_categorical: true
  }
  annotation {
   tag: "list"
  }
}
feature {
  name: "et_dayofweek_cos-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: FLOAT
  float_domain {
    name: "et_dayofweek_cos-list_seq"
    min: -0.9009692573551896
    max: 0.9999999999995972
  }
  annotation {
  }
}
feature {
  name: "user_session"
  type: INT
  int_domain {
    name: "user_session"
    min: 2
    max: 1877363
    is_categorical: false
  }
  annotation {
  }
}
feature {
  name: "et_dayofweek_sin-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: FLOAT
  float_domain {
    name: "et_dayofweek_sin-list_seq"
    min: -0.9749281119157542
    max: 0.9749277124471076
  }
  annotation {
  }
}
feature {
  name: "product_id-list_seq"
  value_count {
    min: 2
    max: 20
  }
  type: INT
  int_domain {
    name: "product_id-list_seq"
    min: 7
    max: 118334
    is_categorical: true
  }
  annotation {
   tag: "item_id"
  }
}
