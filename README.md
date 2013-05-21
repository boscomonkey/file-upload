File Uploader Demo
==================

This is a simple Rails app that demonstrates [multi-part file
upload](http://guides.rubyonrails.org/form_helpers.html#uploading-files).  The only change from a barebones Rails app is the addition of the `FileUploadController` and associated views.

I wrote it to test the
[FileTransfer](http://docs.phonegap.com/en/2.7.0/cordova_file_file.md.html#FileTransfer)
function of [PhoneGap](http://phonegap.com/). Uploaded files are
placed in the `/tmp` directory and available for manual inspection.

I simply run the app on my development machine, and open an [SSH
tunnel](https://help.ubuntu.com/community/SSH/OpenSSH/PortForwarding)
to an externally accessible server.

    ssh -R 3000:localhost:3000 user@externally-available-server.com

Don't forget the tweak `/etc/ssh/sshd_config` on the externally
accessible server to enable remote hosts to connect to the forwarded
port:

    ####### GatewayPorts
    #
    # Specifies whether remote hosts are allowed
    # to connect to local forwarded ports. The argument
    # must be "yes" or "no". The default # is "no".
    #
    GatewayPorts yes

