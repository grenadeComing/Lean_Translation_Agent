import Mathlib

/--
Let p : X → Y be an open map. Show that if A is open in X, then the map
q : A → p(A) obtained by restricting p is an open map.
-/

theorem Munkres_exercise_22_5 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hp : IsOpenMap p) {A : Set X} (hA : IsOpen A) :
  IsOpenMap (fun a : Subtype A => (⟨p a.val, Set.mem_image_of_mem p a.property⟩ : Subtype (p '' A))) := by sorry
