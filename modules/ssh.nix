{ pkgs, ... }:

{
    services = {
        openssh = {
            enable = true;
            settings.PasswordAuthentication = false;
        };
    };

    users.users."sebastian".openssh.authorizedKeys.keyFiles = [
        ../host/desktop/ssh/authorized_keys
    ];
}