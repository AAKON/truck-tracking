from django.contrib import admin
from .models import Vehicle_type
from .models import Vehicle_info
from .models import RF_card_info
from .models import Vehicle_log
# Register your models here.

admin.site.register(Vehicle_type)
admin.site.register(Vehicle_info)
admin.site.register(RF_card_info)
admin.site.register(Vehicle_log)
