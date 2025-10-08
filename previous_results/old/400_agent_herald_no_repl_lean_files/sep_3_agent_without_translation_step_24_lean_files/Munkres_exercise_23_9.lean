import Mathlib

open Set

theorem Munkres_exercise_23_9 {α β : Type _} [TopologicalSpace α] [TopologicalSpace β]
  {X : Set α} {Y : Set β} {A : Set α} {B : Set β}
  (hA : A ⊆ X) (hAneq : A ≠ X) (hB : B ⊆ Y) (hBneq : B ≠ Y)
  (hX : IsConnected X) (hY : IsConnected Y) :
  IsConnected (X ×ˢ Y \ (A ×ˢ B)) := by
  sorry
