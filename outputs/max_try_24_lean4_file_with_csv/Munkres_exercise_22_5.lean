import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- Munkres Ex. 22.5: If p : X → Y is an open map and A is open in X, then the restriction
    q : A → p '' A is an open map. -/
theorem Munkres_exercise_22_5 (p : X → Y) (hp : IsOpenMap p) {A : Set X} (hA : IsOpen A) :
  IsOpenMap (fun a : Subtype A => Subtype.mk (p a.1) (Set.mem_image_of_mem p a.2)) := by
  sorry
