# syntax=docker/dockerfile:1.7
FROM ubuntu:24.04

WORKDIR /workspace

# Slow enough that the stale-provisioning clock (~10 min) fires while the build
# is still running, short enough that the session's 12-min peer-build wait
# still succeeds. KRTX-1491 verification build.
RUN sleep 300 && echo "slow build leg A2 finished"
