# Copyright (c) 2007-2013 Ricardo Mendes, Tiago Oliveira , Alysson Bessani, Marcelo Pasin, Nuno Neves, Miguel Correia, and the authors indicated in the @author tags
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/sh

rm jni/libjavafs.so;
proc="$(getconf LONG_BIT)"
if [ $proc -eq 64 ]
then
  cp jni/libjavafsSo_x86_64/libjavafs_x64.so jni/libjavafs.so;
  echo "64";
fi

if [ $proc -eq 32 ]
then
  cp jni/libjavafsSo_x86_64/libjavafs_x86.so jni/libjavafs.so;
  echo "32";
fi

echo "Done!"
