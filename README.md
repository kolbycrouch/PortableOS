# PortableOS


# What is it?

It's a collection of scripts to build self-contained ( portable ) toolchains, userlands and packages for Linux/BSD/etc.


# How does it work?

It uses pkgsrc along with some patches to the toolchain to allow you to natively build packages and/or toolchains into a unique prefix.
It then (optionally) uses a patched AppImageKit to to create an AppImage out of the prefix.


# Why do it this way?

While AppImage is a great piece of software, it's usual use case is to package an application that had been built into
a standard location and tricking that application and its runtime environment into working in a different location.

It also seems to lack a general purpose solution for collecting all of the runtime dependencies an application might need,
requiring per-package intervention from the package creator in most cases.


# There are many benefits of having a toolchain or package built into a non-standard prefix:

- Run a single binary on any linux kernel with fuse support.
- Isolate incompatible toolchain components such as libc.
- Building or running packages or entire collections of packages linked to musl and glibc on the same system.
- Distribute an application that can run on virtually all linux machines running today. Even non-modern ones.


# Caveats.

- Building an application and ALL of it's dependencies is obviously slow.
- Pkgsrc doesn't currently support removing build-time dependencies without pkgin or -dev packages, resulting in a larger prefix
- Currently we have automated pruning of some basic things, but manual intervention is often required to slim the package down to the minimum.



# How to use it?

Edit make.config to match your settings then run make.package --help for details.



# Future Goals?

- LLVM/clang, pcc and tcc toolchain support.
- Tarball install support (had it before, just need to add again)
- Cross platform support for BSD/OSX/Haiku/Cygwin etc.. (Linux is only supported right now, and non-x64 hasn't been tested)
- Support for creating install images of a base system for use as a full distribution with pkgsrc as the package manager.
- Better pruning for useless files in the prefix, and more re-usability for better compile times.
