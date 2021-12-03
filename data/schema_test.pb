feature {
      name: "session_id"
      type: INT
      int_domain {
        name: "session_id"
        min: 1
        max: 11562158
      }
      annotation {
        tag: "groupby_col"
      }
    }
feature {
      name: "session_start"
      annotation {
        tag: "first"
      }
    }
feature {
      name: "timestamp/age_days/list"
      value_count {
        min: 2
        max: 185
      }
      type: INT
      int_domain {
        name: "timestamp/age_days/list"
        max: 181
      }
      annotation {
        tag: "list"
      }
    }
feature {
      name: "timestamp/age_days/LogOp/Normalize/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/age_days/LogOp/Normalize/list"
        min: -2.917729139328003
        max: 1.5231701135635376
      }
      annotation {
        tag: "continuous"
        tag: "list"
      }
    }
feature {
      name: "timestamp/hour/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/hour/list"
        min: 5.7866054703481495e-06
        max: 1.605135440826416
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/weekday/list"
      value_count {
        min: 2
        max: 185
      },
      type: FLOAT
      float_domain {
        name: "timestamp/weekday/list"
        min: 0.00013345430488698184
        max: 1.568290114402771
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/day/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/day/list"
        min: 0.055881768465042114
        max: 1.7342302799224854
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/month/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/month/list"
        min: 0.5930372476577759
        max: 1.3344756364822388
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/year/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/year/list"
        min: 0.9999997019767761
        max: 0.9999997019767761
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/hour/sin/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/hour/sin/list"
        min: 1.7767292774806265e-06
        max: 0.40796470642089844
      }
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/hour/cos/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/hour/cos/list"
        min: 0.9129977226257324
        max: 1.0
      },
      annotation {
        tag: "continuous"
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "timestamp/weekday/sin/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/weekday/sin/list"
        min: 0.7421683073043823
        max: 0.9995285272598267
      }
      annotation: {
        tag: "time"
        tag: "list"
        tag: "continuous"
      }
    }
feature {
      name: "timestamp/weekday/cos/list"
      value_count {
        min: 2
        max: 185
      }
      type: FLOAT
      float_domain {
        name: "timestamp/weekday/cos/list"
        min: -0.6702135801315308
        max: 0.6233955025672913
      }
      annotation {
        tag: "time"
        tag: "list"
        tag: "continuous"
      }
    }
feature {
      name: "ts/list"
      value_count: {
        min: 2
        max: 185
      }
      type: INT
      int_domain {
        name: "ts/list"
        min: 1396321200
        max: 1412045999
      }
      annotation {
        tag: "time"
        tag: "list"
      }
    }
feature {
      name: "ts/last"
      type: INT
      int_domain: {
        name: "ts/last"
        min: 1396321232
        max: 1412045999
      }
      annotation {
        tag: "time"
        tag: "last"
      }
    }
feature {
      name: "ts/first"
      type: INT
      int_domain: {
        name: "ts/first"
        min: 1396321200
        max: 1412045793
      }
      annotation: {
        tag: "time"
        tag: "first"
      }
    }
feature {
      name: "item_id/list"
      value_count {
      min: 2
      max: 185
      }
      type: INT
      int_domain {
        name: "item_id/list"
        min: 1
        max: 51996
        is_categorical: true
      }
      annotation {
        tag: "item_id"
        tag: "list"
        tag: "categorical"
        tag: "item"
      }
    }
feature {
      name: "session_size"
      type: INT
      int_domain {
        name: "session_size"
        min: 2
        max: 185
      }
      annotation {
        tag: "count"
      }
    }
feature {
      name: "category/list"
      value_count {
        min: 2
        max: 185
      }
      type: INT
      int_domain {
        name: "category/list"
        min: 1
        max: 332
        is_categorical: true
      }
      annotation {
        tag: "list"
        tag: "categorical"
        tag: "item"
      }
    }
feature {
      name: "day_idx"
      annotation: {}
    }
feature {
      name: "user_country"
      type: INT
      int_domain {
        name: "session_id"
        min: 1
        max: 62
        is_categorical: true
      }
      annotation {
        tag: "categorical"
      }
    }
feature {
      name: "user_age"
      type: FLOAT
      float_domain {
        name: "user_age"
        max: 0.4079650044441223
      }
      annotation: {
        tag: "continuous"
      }
    }