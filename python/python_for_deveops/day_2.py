list_of_names= list()
print(type(list_of_names))
#list can also be identify as square brackets
ls=["1",5,56,1.2,7,7.7]
print(type(ls))
ls_of_cloud_servies=["cdt","sdjd","aws","azure",]
print(ls_of_cloud_servies[:])
ls_of_cloud_servies.append("gcpp")
ls_of_cloud_servies.reverse()
for i in ls_of_cloud_servies:
    print(i)
ls_of_cloud_servies.pop(4)
print(ls_of_cloud_servies)
ls_of_cloud_servies.sort()
#ls_of_cloud_servies.copy()
print(ls_of_cloud_servies)
#print(dir(ls_of_cloud_servies))
#print(ls_of_cloud_servies.extend.__doc__)

#============================================dictionery-------------------------
dir_of_item={
    "env":"dev",
    "server":"aws,azure",
    "ram":8900,
    "cpu":4,
    "active":True
}
dir_of_item2={
  "additonal":"ttest"
}
dir_of_item.update(dir_of_item2)
print(dir_of_item.keys())
print(dir_of_item.items())
#print(dir_of_item.clear())
print(dir(dir_of_item))
