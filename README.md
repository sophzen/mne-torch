# MNE-torch
Tools for Deep Learning models for neuro-imaging data analysis that leverages [MNE](https://mne.tools/stable/index.html) for pre-processing.

__Work in progress__

Desirable features without a timeline:

 - Read [BIDS](https://mne.tools/mne-bids/stable/index.html)
 - Keep MNE [epoch structure](https://mne.tools/stable/generated/mne.Epochs.html#mne.Epochs.get_data): `n_epochs, n_channels, n_times`
 - Use nvidia-docker for GPU: https://github.com/NVIDIA/nvidia-docker
 - Run demos as unit tests.
 - Format project as python package.
 - Modular reusable interpretable layers:
   - Filter banks
   - CSPs
   - ERD/S
 - Levarege MNE for tensorboard visualization:
   - CSPs as topoplots
   - Visualize filter banks as [lines in a spectrum](https://www.sciencedirect.com/science/article/pii/S0893608020302021)


`src`: Python scripts
`nb`: Jupyter notebooks
`tests`: Python tests

## Setup

Standard setup: `pip install -r requirements.txt`

To use notebooks use `requirements.txt`

### Docker
Run demos
```
docker pull pytorch/pytorch
sudo docker build -t mne-torch .
sudo docker run -it --rm --mount type=bind,source="$(pwd)",target=/workspace mne-torch python src/demo_eeg_csp.py
sudo docker run -it --rm --mount type=bind,source="$(pwd)",target=/workspace mne-torch python src/demo_sleep_scoring_pytorch.py 
```

Add `--gpus all` for gpu under nvidia-docker.