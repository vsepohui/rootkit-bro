my $policy = '';
my $distro = open '1', sub {
  my $s = shift;
  $s =~ s/1roBa//;
  $policy .= $s;
};

waitfor($distro);

open my $fh, '>1';
print $fh, $policy;
close $fh;
