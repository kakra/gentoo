# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Audio device and application capture for OBS Studio using PipeWire"
HOMEPAGE="https://github.com/dimtpap/obs-pipewire-audio-capture"

if [[ ${PV} == 9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/dimtpap/obs-pipewire-audio-capture.git"
else
	SRC_URI="https://github.com/nowrep/obs-vkcapture/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm64"
fi

LICENSE="GPL-2"
SLOT="0"

DEPEND="
	>=media-video/obs-studio-30.2.0[pipewire]
	>=media-video/wireplumber-0.5.3
"
RDEPEND="${DEPEND}"
