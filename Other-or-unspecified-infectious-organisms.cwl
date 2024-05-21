cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  other-or-unspecified-infectious-organisms-bronchitis---secondary:
    run: other-or-unspecified-infectious-organisms-bronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  other-or-unspecified-infectious-organisms-pharyngitis---secondary:
    run: other-or-unspecified-infectious-organisms-pharyngitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-bronchitis---secondary/output
  congenital-other-or-unspecified-infectious-organisms---secondary:
    run: congenital-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-pharyngitis---secondary/output
  other-or-unspecified-infectious-organisms-transmitted---secondary:
    run: other-or-unspecified-infectious-organisms-transmitted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: congenital-other-or-unspecified-infectious-organisms---secondary/output
  lower-other-or-unspecified-infectious-organisms---secondary:
    run: lower-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-transmitted---secondary/output
  other-or-unspecified-infectious-organisms---secondary:
    run: other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lower-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-mastoiditis---secondary:
    run: other-or-unspecified-infectious-organisms-mastoiditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms---secondary/output
  parasitic-other-or-unspecified-infectious-organisms---secondary:
    run: parasitic-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-mastoiditis---secondary/output
  other-or-unspecified-infectious-organisms-myocarditis---secondary:
    run: other-or-unspecified-infectious-organisms-myocarditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: parasitic-other-or-unspecified-infectious-organisms---secondary/output
  intraspinal-other-or-unspecified-infectious-organisms---secondary:
    run: intraspinal-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-myocarditis---secondary/output
  other-or-unspecified-infectious-organisms-externa---secondary:
    run: other-or-unspecified-infectious-organisms-externa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: intraspinal-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-conjunctivitis---secondary:
    run: other-or-unspecified-infectious-organisms-conjunctivitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-externa---secondary/output
  unspecified---secondary:
    run: unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-conjunctivitis---secondary/output
  other-or-unspecified-infectious-organisms-pericarditis---secondary:
    run: other-or-unspecified-infectious-organisms-pericarditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: unspecified---secondary/output
  other-or-unspecified-infectious-organisms-encephalomyelitis---secondary:
    run: other-or-unspecified-infectious-organisms-encephalomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-pericarditis---secondary/output
  other-or-unspecified-infectious-organisms-granuloma---secondary:
    run: other-or-unspecified-infectious-organisms-granuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-encephalomyelitis---secondary/output
  other-or-unspecified-infectious-organisms-cystitis---secondary:
    run: other-or-unspecified-infectious-organisms-cystitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-granuloma---secondary/output
  acute-other-or-unspecified-infectious-organisms---secondary:
    run: acute-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-cystitis---secondary/output
  other-or-unspecified-infectious-organisms-system---secondary:
    run: other-or-unspecified-infectious-organisms-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: acute-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-tissue---secondary:
    run: other-or-unspecified-infectious-organisms-tissue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-system---secondary/output
  other-or-unspecified-infectious-organisms-myositis---secondary:
    run: other-or-unspecified-infectious-organisms-myositis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-tissue---secondary/output
  pulmonary-other-or-unspecified-infectious-organisms---secondary:
    run: pulmonary-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-myositis---secondary/output
  arthropathy-other-or-unspecified-infectious-organisms---secondary:
    run: arthropathy-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: pulmonary-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-liver---secondary:
    run: other-or-unspecified-infectious-organisms-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: arthropathy-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-sequelae---secondary:
    run: other-or-unspecified-infectious-organisms-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-liver---secondary/output
  tubulointerstitial-other-or-unspecified-infectious-organisms---secondary:
    run: tubulointerstitial-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-sequelae---secondary/output
  other-or-unspecified-infectious-organisms-tonsillitis---secondary:
    run: other-or-unspecified-infectious-organisms-tonsillitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: tubulointerstitial-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-media---secondary:
    run: other-or-unspecified-infectious-organisms-media---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-tonsillitis---secondary/output
  other-or-unspecified-infectious-organisms-myringitis---secondary:
    run: other-or-unspecified-infectious-organisms-myringitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-media---secondary/output
  other-or-unspecified-infectious-organisms-sepsis---secondary:
    run: other-or-unspecified-infectious-organisms-sepsis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-myringitis---secondary/output
  other-or-unspecified-infectious-organisms-balanoposthitis---secondary:
    run: other-or-unspecified-infectious-organisms-balanoposthitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-sepsis---secondary/output
  spondylopathy-other-or-unspecified-infectious-organisms---secondary:
    run: spondylopathy-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-balanoposthitis---secondary/output
  multiple-other-or-unspecified-infectious-organisms---secondary:
    run: multiple-other-or-unspecified-infectious-organisms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: spondylopathy-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-creutzfeldtjakob---secondary:
    run: other-or-unspecified-infectious-organisms-creutzfeldtjakob---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: multiple-other-or-unspecified-infectious-organisms---secondary/output
  other-or-unspecified-infectious-organisms-pneumonia---secondary:
    run: other-or-unspecified-infectious-organisms-pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-creutzfeldtjakob---secondary/output
  other-or-unspecified-infectious-organisms-pyoderma---secondary:
    run: other-or-unspecified-infectious-organisms-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-pneumonia---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-or-unspecified-infectious-organisms-pyoderma---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
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
