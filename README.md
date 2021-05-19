# Chemical Reaction Extraction from Scientific Literature

This repository contains code/data for extracting chemical reactions from scientific literature.

## Installation

### Pre-requirements

1. pytorch (>=1.8.1)
2. transformers (tested on v3.0.2)
3. tqdm (>=4.36.0)
4. numpy (>=1.18.0)
5. seqeval

### Install from source
1. `git clone https://github.com/juanmoo/MedTrialExtractor`
2. `cd ChemRxnExtractor`
3. `pip install -r requirements.txt`
4. `pip install -e .`

### Download Trained Models
Download the trained models: [cre_models_v0.1.tgz](https://drive.google.com/file/d/1HeP2NlSAdqNzlTqmHCrwmoUNiw9JWdaf/view?usp=sharing), and extract to the current directory:
```bash
tar zxvf cre_models_v0.1.tgz
```

## Contact
Please create an issue or email to [juanmoo@csail.mit.edu](mailto:juanmoo@csail.mit.edu) should you have any questions, comments or suggestions.

