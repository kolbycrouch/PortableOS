# PortableOS


# What is it?

It's a collection of scripts to build self-contained ( portable ) toolchains, userlands and packages for Linux/BSD/etc.


# How does it work?

It uses pkgsrc along with some patches to the toolchain to allow you to natively build packages into a unique prefix.
It may then use patched AppImageKit to to create an AppImage out of the prefix.


# Why do it this way?

While AppImage is a great piece of software, it's usual use case it to package an application that had been built for
a standard location and tricking that application and its runtime environment into working in a different prefix.

It also seems to lack a general purpose solution for collecting all of the runtime dependencies an application might need,
requiring per-package intervention from the package creator in most cases.


# There are many benefits of having a toolchain or package built into a non-standard prefix:

- Run a single binary on any linux kernel with fuse support.
- Isolate incompatible toolchain components such as libc.
- Building or running packages or entire collections of packages linked to musl and glibc on the same system.
- Distribute an application that can run on virtually all linux machines running today. Even non-modern ones.



# How to use it?

Run make.package --help for details.

