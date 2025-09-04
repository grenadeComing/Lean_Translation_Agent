import Mathlib

noncomputable def continuous_linear_bijective_has_continuous_inverse
  {k : Type*} [NormedField k]
  {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace k X] [NormedSpace k Y]
  (A : X →L[k] Y) (h : Function.Bijective (A : X → Y)) :
  Y →L[k] X := by sorry
