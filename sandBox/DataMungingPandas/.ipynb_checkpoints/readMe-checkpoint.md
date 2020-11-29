---
title: Data Munging with Pandas
author: Michael Colaresi
---

#A short introduction to data munging with pandas.

See the notebook for a walkthrough.

## Installing virtual environment

This sandBox uses a virtual environment.

The directions below assume that you are using conda to for package management.

The file `MungingWithPandas_env.yaml` holds the requirements.

With `conda` you can create a new virtual environment with the required packages (with this sandBox as your pwd)

`conda env create -f MungingWithPandas_env.yaml`

then activate the environment (the name is defined in the yaml environment file)

`conda activate MungingWithPandas`

## Updating vitual environment

If you make changes to the `MungingWithPandas_env.yaml` then you need to update the virtual environment.

This can be done, from the pwd, by first deactivating the virtual environment, if you have it running:

`conda deactivate`

You can check what environment you are in with `conda info --envs`

The current environment has an `*` next to it.

If you are out of the virtual environment and back to `base`, then run this to update

` conda env update --file MungingWithPandas_env.yaml`
