import Mathlib

variable {n : ℕ}

open Set

axiom IsShortestPath (S : Set (Fin n → Real)) (x y : Fin n → Real) (γ : Real → Fin n → Real) : Prop
axiom IsPolygonalPath (S : Set (Fin n → Real)) (x y : Fin n → Real) (pts : List (Fin n → Real)) : Prop

theorem shortest_path_is_polygon {S : Set (Fin n → Real)} {x y : Fin n → Real} :
  (∃ γ, IsShortestPath S x y γ) → (∃ pts, IsPolygonalPath S x y pts) := by
  sorry
