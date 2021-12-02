
/- https://leanprover.github.io/theorem_proving_in_lean/introduction.html -/


/- declare some constants -/

constants m n : nat        -- m is a natural number
constants b1 b2 : bool  -- declare two constants at once

/- check their types -/

#check m            -- output: nat
#check n
#check n + 0        -- nat
#check m * (n + 0)  -- nat
#check b1           -- bool
#check b1 && b2     -- "&&" is boolean and
#check b1 || b2     -- boolean or
#check tt           -- boolean "true"

constant f : nat → nat

#check f
