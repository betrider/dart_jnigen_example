## jdk11 추천

# src 폴더 생성
1.dart run jnigen --config jnigen.yaml

# build 폴더 생성
2.dart run jni:setup -p jni -s src/example

# class 파일 생성
3.javac java/dev/dart/Example.java

# 실행
4.dart run dart_jnigen_example:sum 17 25