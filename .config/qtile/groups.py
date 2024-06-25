from libqtile.config import Group, Match
from constants import terminal, browser

def create_group(key, label, app):
    return Group(
        key, 
        label=label, 
        matches=[Match(wm_class=app)]
    )

def get_groups():
    groups = [
        create_group("1", "\uf484", browser),
        create_group("2", "\uf120", terminal),
    ]
    
    group_keys = [i for i in "3456789"]
    group_labels = ["1", "2", "3", "4", "5", "6", "7"]
    for i in range(len(group_keys)):
        groups.append(Group(group_keys[i], label=group_labels[i]))

    return groups

