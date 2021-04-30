namespace: jhjjksdf
flow:
  name: flow1
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '2'
            - value2: '2'
        navigate:
          - SUCCESS:
              next_step: sleep
              ROI: '10'
          - FAILURE: FAILURE
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '2'
        navigate:
          - SUCCESS:
              next_step: SUCCESS
              ROI: '1'
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      sleep:
        x: 318
        'y': 185
        navigate:
          f54c64a5-531f-8547-c294-469d9a1f5d28:
            targetId: a7c04a88-8cbf-0c74-9d5f-3701e13cee9c
            port: SUCCESS
          88e315f7-faa7-2448-edb6-c2dd2d928b52:
            targetId: 7ce772d1-b79d-7d9f-2fe7-55d1c26e2330
            port: FAILURE
      add_numbers:
        x: 134
        'y': 187
        navigate:
          314be1dd-7926-e732-9f12-19ed0571771e:
            targetId: 7ce772d1-b79d-7d9f-2fe7-55d1c26e2330
            port: FAILURE
    results:
      SUCCESS:
        a7c04a88-8cbf-0c74-9d5f-3701e13cee9c:
          x: 561.1666870117188
          'y': 196.66668701171875
      FAILURE:
        7ce772d1-b79d-7d9f-2fe7-55d1c26e2330:
          x: 340.16668701171875
          'y': 359.66668701171875
