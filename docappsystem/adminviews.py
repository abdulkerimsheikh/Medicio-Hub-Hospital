from django.shortcuts import render,redirect,HttpResponse
from django.contrib.auth.decorators import login_required
from dasapp.models import Specialization,DoctorReg,Appointment,Page,AddPatient,MedicalHistory,CustomUser,PatientReg
from django.contrib import messages
from datetime import datetime
from django.shortcuts import render, get_object_or_404

@login_required(login_url='/')
def ADMINHOME(request):
    doctor_count = DoctorReg.objects.all().count
    specialization_count = Specialization.objects.all().count
    patient_count = AddPatient.objects.all().count
    reguser_count = CustomUser.objects.filter(user_type=3).count
    context = {
        'doctor_count':doctor_count,
        'specialization_count':specialization_count,
        'patient_count':patient_count,
        'reguser_count':reguser_count,

    } 
    return render(request,'admin/adminhome.html',context)

@login_required(login_url='/')
def SPECIALIZATION(request):
    if request.method == "POST":
        specializationname = request.POST.get('specializationname')
        specialization =Specialization(
            sname=specializationname,
        )
        specialization.save()
        messages.success(request,'Specialization  Added Succeesfully!!!')
        return redirect("add_specilizations")
    return render(request,'admin/specialization.html')

@login_required(login_url='/')
def MANAGESPECIALIZATION(request):
    specialization = Specialization.objects.all()
    context = {'specialization':specialization,

    }
    return render(request,'admin/manage_specialization.html',context)

def DELETE_SPECIALIZATION(request,id):
    specialization = Specialization.objects.get(id=id)
    specialization.delete()
    messages.success(request,'Record Delete Succeesfully!!!')
    
    return redirect('manage_specilizations')

login_required(login_url='/')
def UPDATE_SPECIALIZATION(request,id):
    specialization = Specialization.objects.get(id=id)
    
    context = {
         'specialization':specialization,
    }

    return render(request,'admin/update_specialization.html',context)

login_required(login_url='/')

def UPDATE_SPECIALIZATION_DETAILS(request):
        if request.method == 'POST':
          sep_id = request.POST.get('sep_id')
          sname = request.POST.get('sname')
          sepcialization = Specialization.objects.get(id=sep_id) 
          sepcialization.sname = sname
          sepcialization.save()   
          messages.success(request,"Your specialization detail has been updated successfully")
          return redirect('manage_specilizations')
        return render(request, 'admin/update_specialization.html')

@login_required(login_url='/')
def DoctorList(request):
    doctorlist = DoctorReg.objects.all()
    context = {'doctorlist':doctorlist,

    }
    return render(request,'admin/doctor-list.html',context)

def ViewDoctorDetails(request,id):
    doctorlist1=DoctorReg.objects.filter(id=id)
    context={'doctorlist1':doctorlist1

    }

    return render(request,'admin/doctor-details.html',context)

def View_DOCPatient(request,id):
    patde = AddPatient.objects.filter(doctor_id=id)
    context={
        'patde':patde
    }
    return render(request, 'admin/views_docpatient.html',context)


@login_required(login_url='/')
def ViewCheckAddPatient(request,id):    
    patient_data = AddPatient.objects.get(id =id) 
    medrec_data = MedicalHistory.objects.filter(pat_id =id)    
    context = {
        
        "pd":patient_data,
        "mrd":medrec_data,
    }
    return render(request,'admin/update_patientmdrec.html',context)

def ViewDoctorAppointmentList(request,id):
    patientdetails=Appointment.objects.filter(doctor_id=id)
    context={'patientdetails':patientdetails

    }

    return render(request,'admin/doctor_appointment_list.html',context)

def ViewPatientDetails(request,id):
    patientdetails=Appointment.objects.filter(id=id)
    context={'patientdetails':patientdetails

    }

    return render(request,'admin/patient_appointment_details.html',context)




@login_required(login_url='/')
def RegUsersDetails(request):
    regusers = PatientReg.objects.all()
    context = {"regusers":regusers}
    return render(request,'admin/reg-users.html',context)

@login_required(login_url='/')
def DELETE_REGUSERS(request, id):
    try:
        patreg = get_object_or_404(PatientReg, id=id)
        custom_user = patreg.admin  
        patreg.delete() 
        custom_user.delete()
        messages.success(request, 'Record deleted successfully!')
    except Exception as e:
        messages.error(request, f'Error deleting record: {e}')
    return redirect('regusers')

@login_required(login_url='/')
def Reg_User_Appoinments(request,id):
    pat_admin = PatientReg.objects.get(id=id)
    userapptdetails = Appointment.objects.filter(pat_id=pat_admin)
    context = {
        'vah':userapptdetails
    }
    return render(request, 'admin/reg_users_appointment.html', context)



