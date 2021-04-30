namespace: RandomFlow
flow:
  name: Run_Id
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '1'
            - value2: '1'
        publish:
          - output1: '${result}'
        navigate:
          - SUCCESS: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '${output1}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      add_numbers:
        x: 405
        'y': 57
      sleep:
        x: 618
        'y': 64
        navigate:
          ef869c73-9529-4467-57a2-305c233c9066:
            targetId: c775a769-b823-f79f-a0ea-984448f4de48
            port: SUCCESS
    results:
      SUCCESS:
        c775a769-b823-f79f-a0ea-984448f4de48:
          x: 897
          'y': 65.75
