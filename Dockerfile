# ok
---
- name: Install Ansible on Debian/Ubuntu
  hosts: debian
  become: yes

  tasks:
    - name: Update apt cache
      apt:
        update_cache: yes

    - name: Install software-properties-common
      apt:
        name: software-properties-common
        state: present

    - name: Install Ansible
      apt:
        name: ansible
        state: present

