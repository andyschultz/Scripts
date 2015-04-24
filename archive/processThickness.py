#!/usr/local/bin/python3

import sys,math





Tmin = float(input("Wavelength at Minimum: "))
Meas_Tmin = float(input("Measured T at Minimum: "))
Min_Order = int(input("Minimum Order: "))

# print("Tmin =",Tmin)
# print("Min_Order =",Min_Order)
# print("Meas_Tmin =",Meas_Tmin)

Eff_Tmin = (96*Meas_Tmin)/(96-(4*Meas_Tmin))
n_at_Tmin = math.sqrt(1.5)*(1+math.sqrt(1-Eff_Tmin))/(math.sqrt(Eff_Tmin))
d = (Tmin*(1+(2*Min_Order)))/(4*n_at_Tmin)

print("Eff_Tmin =",round(Eff_Tmin,4))
print("n @ Tmin =",round(n_at_Tmin,4))
print("d (nm) =",round(d,4))