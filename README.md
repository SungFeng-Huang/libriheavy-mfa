# Usage
## Step 1: Download LibriHeavy Manifests
- LibriHeavy repo: https://github.com/k2-fsa/libriheavy/tree/master
- Downloaded to: 
    - `data/LibriHeavy`: current repo default
    - or `download/librilight`: script default 
    - or any custom path
    

## Step 2: Load, Cut and Save Audios
Using `mfa_librilight.py`

### Requirements
```pip install lhotse textgrid tqdm```

### Modify path config
- old_prefix = "download/librilight"
    - original prefix in manifests, don't change it
- librilight_dir = "/datasets/LibriLight"
    - change to your LibriLight download path
- libriheavy_dir = "data/LibriHeavy"
    - LibriHeavy manifests download dir, change accordingly
- corpus_dir
    - Directory to place your audio cuts (`*.wav`) and transcript files (`*.lab`)

## Step 3: Montreal Forced Align
Using `scripts/run.sh`

### MFA environment setup
Installation guide: https://montreal-forced-aligner.readthedocs.io/en/latest/installation.html

I use the docker image option, since the conda installation is slow.
Use this repo's `.devcontainer/devcontainer.json` for changing to root user, or else you can't run the mfa commands successfully.

### Modify path & subset configs
Change the subsets to run, `corpus_dir`, `textgrid_dir` and `cmd_option` accordingly.