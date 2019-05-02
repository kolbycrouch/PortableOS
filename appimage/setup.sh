ln -sfn /tmp/.mount_PKGREPLACE* REPLACE
echo "export PATH=REPLACE/bin:REPLACE/sbin:$PATH" >> /tmp/.pkg-paths
REPLACE/PKGREPLACE-switch &
