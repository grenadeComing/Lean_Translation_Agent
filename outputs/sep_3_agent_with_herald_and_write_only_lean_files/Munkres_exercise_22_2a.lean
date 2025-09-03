import Mathlib

/-!
Munkres, Topology, Exercise 22.2(a):
Let p : X → Y be a continuous map. Show that if there is a continuous map f : Y → X such that
p ∘ f = id_Y, then p is a quotient map.
-/

open Topology

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- If p has a continuous right inverse f (so p ∘ f = id), then p is a quotient map. -/
theorem Munkres_exercise_22_2a (p : X → Y) (hp : Continuous p)
  (f : Y → X) (hf : Continuous f) (hpf : p ∘ f = id) : QuotientMap p := by sorry
