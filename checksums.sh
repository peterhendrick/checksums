#!/bin/bash
# A file to get multiple shasums from a file with one command
if [ $# = 0 ]; then
	echo "Error: No file given."
	exit 1
fi
echo "---------------------------------------------------------------------"
for i in $@; do
	MD5SUM="$(md5sum $i)" && echo "md5:       $MD5SUM"
	RIPEMD160="$(openssl rmd160 $i | awk '{print $2}')" && echo "ripemd160: $RIPEMD160  $i"
	SHA1SUM="$(shasum -a 1 $i)" && echo "sha1:      $SHA1SUM"
	SHA224SUM="$(shasum -a 224 $i)" && echo "sha224:    $SHA224SUM"
	SHA256SUM="$(shasum -a 256 $i)" && echo "sha256:    $SHA256SUM"
	SHA384SUM="$(shasum -a 384 $i)" && echo "sha384:    $SHA384SUM"
	SHA512SUM="$(shasum -a 512 $i)" && echo "sha512:    $SHA512SUM"
	SHA512224SUM="$(shasum -a 512224 $i)" && echo "sha512224: $SHA512224SUM"
	SHA512256SUM="$(shasum -a 512256 $i)" && echo "sha512256: $SHA512256SUM"
	echo "---------------------------------------------------------------------"
done
exit 0
