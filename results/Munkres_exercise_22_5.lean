import Mathlib

open Set

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- The restriction map q : Subtype A → Subtype (p '' A). -/
def q (p : X → Y) {A : Set X} : Subtype A → Subtype (p '' A) :=
  fun a => ⟨p a.1, mem_image_of_mem p a.2⟩

/-- If p : X → Y is an open map and A is open in X, then the restriction q : Subtype A → Subtype (p " A) is open. -/
theorem Munkres_exercise_22_5 {p : X → Y} (hp : IsOpenMap p) {A : Set X} (hA : IsOpen A) :
  IsOpenMap (q p : Subtype A → Subtype (p '' A)) := by sorry
