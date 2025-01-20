
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dasapp', '0003_remove_appointment_prescription_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='customuser',
            options={},
        ),
        migrations.AlterField(
            model_name='customuser',
            name='user_type',
            field=models.CharField(choices=[(2, 'doc'), (1, 'admin')], default=1, max_length=50),
        ),
        migrations.AlterModelTable(
            name='addpatient',
            table='addpatient',
        ),
        migrations.AlterModelTable(
            name='appointment',
            table='appointment',
        ),
        migrations.AlterModelTable(
            name='customuser',
            table='customuser',
        ),
        migrations.AlterModelTable(
            name='doctorreg',
            table='doctorreg',
        ),
        migrations.AlterModelTable(
            name='medicalhistory',
            table='medicalhistory',
        ),
        migrations.AlterModelTable(
            name='page',
            table='page',
        ),
        migrations.AlterModelTable(
            name='patientreg',
            table='patientreg',
        ),
        migrations.AlterModelTable(
            name='specialization',
            table='specialization',
        ),
    ]
