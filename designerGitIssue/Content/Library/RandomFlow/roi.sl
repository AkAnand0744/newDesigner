namespace: RandomFlow
flow:
  name: roi
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '10'
            - value2: '10'
        navigate:
          - SUCCESS:
              next_step: sleep
              ROI: '10'
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '2'
        navigate:
          - SUCCESS:
              next_step: SUCCESS
              ROI: '2'
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      add_numbers:
        x: 439
        'y': 106
      sleep:
        x: 654
        'y': 123
        navigate:
          0303cca6-49a8-bc68-320f-70ffb413ef29:
            targetId: ad3aa278-e65e-9aa0-2f82-b8604fb0cae4
            port: SUCCESS
    results:
      SUCCESS:
        ad3aa278-e65e-9aa0-2f82-b8604fb0cae4:
          x: 858
          'y': 130.75
