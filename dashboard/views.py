from django.shortcuts import render
from .models import Vehicle_log
from .forms import VehicleForm
from .forms import RfCardForm
# Create your views here.

def home(request):

    vehicle_log = Vehicle_log.objects.all()

    return render(request,'dashboard/dashboard.html',{"vehicle_log":vehicle_log})

def vehicle_form(request):
    if request.method == 'GET':

        return render(request,'dashboard/vehicle.html',{"forms":VehicleForm()})

    else:

        form = VehicleForm(request.POST)
        form.save()
        return render(request,'dashboard/vehicle.html',{"forms":VehicleForm()})


def rf_card_form(request):
    if request.method == 'GET':

        return render(request,'dashboard/rfcard.html',{"forms":RfCardForm()})

    else:

        form = RfCardForm(request.POST)
        form.save()
        return render(request,'dashboard/rfcard.html',{"forms":RfCardForm()})
