use strict;
use 5.010;
use warnings;
print q(
~~~~~~~~~~~~~~~~~~~~~~~~
[                        ]
[     raku cyber         ]
[     v0.1               ]
[                        ]
~~~~~~~~~~~~~~~~~~~~~~~~
);
printf "Enter interface:";
my $os = $^O;
my $interface = <>;
chomp $interface;
system("sudo ifconfig $interface down"); #x2
system("sudo ifconfig $interface down"); #x2 
#x2 sys
system("sudo airmon-ng check kill");
system("sudo airmon-ng check kill");
system("sudo iwconfig $interface mode monitor");
system("sudo iwconfig $interface mode monitor");
system("sudo ifconfig $interface up");
system("sudo ifconfig $interface up");
system("sudo iwconfig");
print "the interface $interface has been set to mode monitor mode $os\n";
