cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  case-definition-for-alcohol-dependence---primary:
    run: case-definition-for-alcohol-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-case-definition-for-alcohol-dependence---primary:
    run: chronic-case-definition-for-alcohol-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence---primary/output
  case-definition-for-alcohol-dependence-withdrawal---primary:
    run: case-definition-for-alcohol-dependence-withdrawal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-case-definition-for-alcohol-dependence---primary/output
  case-definition-for-alcohol-dependence-tremens---primary:
    run: case-definition-for-alcohol-dependence-tremens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-withdrawal---primary/output
  case-definition-for-alcohol-dependence-delirium---primary:
    run: case-definition-for-alcohol-dependence-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-tremens---primary/output
  case-definition-for-alcohol-dependence-intoxication---primary:
    run: case-definition-for-alcohol-dependence-intoxication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-delirium---primary/output
  case-definition-for-alcohol-dependence-remission---primary:
    run: case-definition-for-alcohol-dependence-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-intoxication---primary/output
  case-definition-for-alcohol-dependence-state---primary:
    run: case-definition-for-alcohol-dependence-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-remission---primary/output
  alcohol---primary:
    run: alcohol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-state---primary/output
  case-definition-for-alcohol-dependence-alcoholism---primary:
    run: case-definition-for-alcohol-dependence-alcoholism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: alcohol---primary/output
  case-definition-for-alcohol-dependence-brain---primary:
    run: case-definition-for-alcohol-dependence-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-alcoholism---primary/output
  continuous-case-definition-for-alcohol-dependence---primary:
    run: continuous-case-definition-for-alcohol-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-brain---primary/output
  case-definition-for-alcohol-dependence-detoxification---primary:
    run: case-definition-for-alcohol-dependence-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: continuous-case-definition-for-alcohol-dependence---primary/output
  behavioural-case-definition-for-alcohol-dependence---primary:
    run: behavioural-case-definition-for-alcohol-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-detoxification---primary/output
  case-definition-for-alcohol-dependence-dipsomania---primary:
    run: case-definition-for-alcohol-dependence-dipsomania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: behavioural-case-definition-for-alcohol-dependence---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: case-definition-for-alcohol-dependence-dipsomania---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
