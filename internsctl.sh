#!/bin/bash


echo " hi this is internsctl command written by Jatin Kartik"
function get_cpu_info() {
  lscpu
}
function get_mem_info(){
  free
}
function get_usr_list(){
  cut -d: -f1 /etc/passwd
}
function get_usr_list_sudo(){
  grep -Po '^sudo.+:\K.*$' /etc/group
}
function usr_create(){
  echo "creating users "
  name=$1
  sudo useradd -m -s /bin/bash "$name"
  sudo passwd "$name"
  echo "users created by Jatin Kartik"
}
function file_stat(){
  name2=$1
  stat "$name2"
}
VERSION="1.0.0"

case "$1" in
    --version)
        echo "internsctl version $VERSION"
        ;;
    cpu)
      case "$2" in
        getinfo)
          get_cpu_info
          ;;
      esac
      ;;

    memory)
      case "$2" in
        getinfo)
          get_mem_info
          ;;
      esac
      ;;
    user)
      case "$2" in 
        list)
        get_usr_list
        ;;
        create)
        case "$3" in 
        *)
        usr_create "$3"
        ;;
        esac
      ;;
      esac
    ;;
    file)
    case "$2" in
    getinfo)
      file_stat "$3"
      ;;
    esac
    ;;


    *)

        echo "Welcome to internsctl version $VERSION"
        echo "Usage: internsctl [options]"
        echo "Options:"
        echo "  --version   Show version information"
        echo "  <command>   Execute a specific command related to interns"
        ;;
esac
