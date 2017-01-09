################################################################################
#
# python-mopidy-spotify
#
################################################################################

PYTHON_MOPIDY_SPOTIFY_VERSION = 3.0.0
PYTHON_MOPIDY_SPOTIFY_SOURCE = Mopidy-Spotify-$(PYTHON_MOPIDY_SPOTIFY_VERSION).tar.gz
PYTHON_MOPIDY_SPOTIFY_SITE = https://pypi.python.org/packages/f6/a2/e839b09110731500263e475ad840962e2440dde9d0a6948f303333e79807
PYTHON_MOPIDY_SPOTIFY_SETUP_TYPE = setuptools
PYTHON_MOPIDY_SPOTIFY_LICENSE = Apache-2.0
PYTHON_MOPIDY_SPOTIFY_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_SPOTIFY_DEPENDENCIES = python-mopidy python-pykka python-pyspotify python-requests python-setuptools

$(eval $(python-package))
