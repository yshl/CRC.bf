->                 # dec{0} @1
++++[->++++<]>     # {2}=16 @2
[-<+>[->>+<<]>>]   # {1::31::2}=1 @34
->                 # dec{34} @35
,                  # {35}=getchar()
+[-                # while({35}!=EOF)
                     # p=35
  [                  # while({p#0})
                       # {p#1}={p#0}%2 {p#2}={p#0}/2
    [                  # while({p#0}){
      [->>>+>+<<<<]>>>>    # {p#3:p#4}={p#0} @p#4
      [[-]<-<<+>>>]<       # if({p#4}){dec{p#3} inc{p#1}} @p#3
      [->+<<<<+>>>]>       # {p#0:p#4}={p#3} @p#4
      [[-]<<+<-<->>>>]<<<< # if({p#4}){inc{p#2} dec{p#1} dec{p#0}} @p#0
    ]>                 # } @p#1
    [                  # if({p#1}){
                           # q=sub p 18; {q#0}^=1
      -<<<<<<<<<<<<<<<<<<< # {p#1}=0 @q#0
      [->+<]>              # {q#1}={q#0} @q#1
      [-<->]<              # {q#0}=neg{q#1} @q#0
      +>>>>>>>>>>>>>>>>>>> # inc{q#0} @p#1
    ]>                 # } @p#2
                       # p=add p 2
  ]<+[-<<+]->        # } @35
  ++++++++           # {35}=8
  [                    # while({35}){
    -<<<                 # dec{35} @32
                         # {3::33::2}={1::31::2}
                         # p=30
    +[-                  # while({p#2}!=neg 1){
      <                    #  @p#1
      [->>+<<]<            # {p#3}={p#1} @p#0
                           # p=sub p 2
    +]->>                # } @2
    +[->>+]-<            # @33
                         # if({33}) {1::31::2}^=0x1021
    [                    # if({33}){
      -<<<<<<<<            # dec{33} @25
      [->+<]>              # {26}={25} @26
      [-<->]<              # {25}=neg{26} @25
      +<<<<<<<<<<<<<<      # inc{25} @11
      [->+<]>              # {12}={11} @12
      [-<->]<              # {11}=neg{12} @11
      +<<<<<<<<<<          # inc{11} @1
      +>                   # inc{1} @2
      +[->>+]-<            # @33
    ]>>                  # } @35
  ]                    # } @35
,+]                  # {35}=getchar()
<<<                  # @32
+++++++              # {32}=7 @32
                     # p=29
[                    # while({p#3}){
  -                    # dec{p#3}
  [-<<+>>]<            # {p#1}={p#3} @p#2
  [-<<++>>]<           # {p#0}=add {p#0} 2*{p#2} @p#1
                       # p=sub p 2
]<                   # } @17
.<                   # putchar({17}) @16
+++++++              # {16}=7 @16
                     # p=13
[                    # while({p#3}){
  -                    # dec{p#3}
  [-<<+>>]<            # {p#1}={p#3} @p#2
  [-<<++>>]<           # {p#0}=add {p#0} 2*{p#2} @p#1
                       # p=sub p 2
]<                   # } @1
.                    # putchar({1})
