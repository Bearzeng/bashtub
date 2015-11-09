[ -z ${RUN_BASH_VERSION+x} ] && exit 1
[ -f $TRAVIS_BUILD_DIR/bash-build/$RUN_BASH_VERSION/bin/bash ] && exit 0

curl "https://ftp.gnu.org/gnu/bash/bash-${RUN_BASH_VERSION}.tar.gz" | tar zx
cd bash-${RUN_BASH_VERSION}
./configure --prefix="$TRAVIS_BUILD_DIR/bash-build/$RUN_BASH_VERSION"
make -j4 install