function __fish_boot2docker_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'boot2docker' ]
    return 0
  end
  return 1
end

complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a help -d "Print help info."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a init -d "Create a new Boot2Docker VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   init              -d  "Create a new Boot2Docker VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   "up start boot"     -d  "Start VM from any states."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   ssh -d  "Login to VM via SSH."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   "save suspend"      -d  "Suspend VM and save state to disk."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   "down stop halt"    -d  "Gracefully shutdown the VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   restart           -d  "Gracefully reboot the VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   poweroff          -d  "Forcefully power off the VM (may corrupt disk image)."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   reset             -d  "Forcefully power cycle the VM (may corrupt disk image)."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   "delete destroy"    -d  "Delete Boot2Docker VM and its disk image."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   "config cfg"        -d  "Show selected profile file settings."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   info              -d  "Display detailed information of VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   ip                -d  "Display the IP address of the VM's Host-only network."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   shellinit         -d  "Display the shell commands to set up the Docker client."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   status            -d  "Display current state of VM."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   download          -d  "Download Boot2Docker ISO image."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   upgrade           -d  "Upgrade the Boot2Docker ISO image (restart if running)."
complete -f -c boot2docker -n '__fish_boot2docker_needs_command' -a   version           -d  "Display version information."
