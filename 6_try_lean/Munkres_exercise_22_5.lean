import Mathlib

/-- Let p : X → Y be an open map. If A is open in X, then the restriction q : A → p '' A is an open map. -/
theorem munkres_exercise_22_5 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hp : IsOpenMap p) (A : Set X) (hA : IsOpen A) :
  IsOpenMap ((fun x : Subtype A => ⟨p x.1, Set.mem_image_of_mem p x.2⟩) : Subtype A → p '' A) := by sorry
