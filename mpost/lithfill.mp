%input mpattern;
%input lithpats;

def phil( expr P,pat) =
  %tracingall;
  %tracingonline:=1;
  show P;
  begingroup
    DEBUG := 0;
    walloffset := 1; % FIXME how to scale this?
    thickness := 15; % FIXME how to scale this?
    pair p[];
    pair a,b,a',b',n,n';
    path S;
    path C;
    path F;
    numeric not_cycle;
    
    not_cycle=0;
    pl := length( P );
    if (point 0 of P) <> (point pl of P):
      not_cycle := 1;
    fi;
    for s=0 upto pl-not_cycle:
      S := subpath (s,s+1) of P;    
      sl := length( S );
      if DEBUG=1:
        path dbg;
        dbg := fullcircle scaled 2 shifted (point 0 of S) ; 
        fill dbg withcolor green;
        draw dbg;
      fi;
      stp := .2; % FIXME how to scale this?
      
      for i=0 step stp until sl:
        p0 := point i of S;
        p1 := point i+stp of S;

        a  := (walloffset*unitvector direction i of S rotated -90 shifted p0);
        a' := ((walloffset+thickness)*unitvector direction i of S rotated -90 shifted p0);
        b  := (walloffset*unitvector direction i+stp of S rotated -90 shifted p1);
        b' := ((walloffset+thickness)*unitvector direction i+stp of S rotated -90 shifted p1);

        if (i = 0) and (known n): % fill gap with previous path
            C := n--n'--a'--cycle;    
            if DEBUG = 1:
              draw C withcolor green;
            fi;
            fill C  withpattern pat;             
        fi
        F := a--a'--b'--b--cycle;
        if DEBUG=1:
          draw F withcolor red;
          draw (b--b') withcolor blue;
        fi;      
        fill F  withpattern pat;
      endfor; % i
      n := b;
      n' := b';
    endfor; % s
  endgroup;
enddef;


def a_limestone_UIS (expr Path) =
  T:=identity;
  thclean Path;
  thfill Path withpattern pattern_limestone_UIS;
enddef;

def l_wall_limestone_UIS (expr P) =
  T:=identity;
  pickup PenA;
  thdraw P;  
  phil(P, pattern_limestone_UIS)
enddef;

