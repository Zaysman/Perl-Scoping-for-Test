sub staticScope1 {
    my $statVar = 1;
    print "statVar = $statVar inside staticScope1\n";
    staticScope2();
}

sub staticScope2 {
    my $statVar = 2;
    print "statVar = $statVar inside staticScope2\n";
    
}



sub dynam1 {
    local $var = 1;
    print "var = $var in dynam1\n";
    dynam2();
    
}

sub dynam2 {
    
    print "var = $var in dynam2\n";
    dynam3();
}

sub dynam3 {
    $var = 3;
    print "var = $var in dynam3\n";
    dynam4();
}

sub dynam4 {
    
    print "var = $var in dynam4\n";
}

$statVar = 50;
print "statVar = $statVar outside method\n";
staticScope1();

$var = 0;
print "var = $var declared globally for the first time\n";

dynam1();