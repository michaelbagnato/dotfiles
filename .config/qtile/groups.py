from libqtile.config import Group

def create_group(key, label):
    return Group(
        key, 
        label=label, 
    )

def get_groups():
    groups = []
    group_keys = [i for i in "123456789"]
    group_labels = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    for i in range(len(group_keys)):
        groups.append(create_group(group_keys[i], label=group_labels[i]))
    return groups

