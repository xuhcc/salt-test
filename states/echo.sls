echo_test:
  cmd.run:
    - name: echo {{ pillar['value1'] }}
