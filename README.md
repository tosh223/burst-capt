# burst-capt

burst-capt saves images continuously with a webcam.

## Description

burst-capt is invoked by Docker container mounting a webcam.

## Install

```bash
git clone https://github.com/tosh223/burst-capt.git
cd ./burst-capt
```

## Usage

Please set following configurations to ```docker_run.sh```.

- repository
- tag
- time_zone
- wait_sec (Shooting interval)

Then, start the bash script.

```bash
bash docker_run.sh
```

After building a Docker image, it runs as a Docker container.
Saved image files are in the ```data``` directory.
