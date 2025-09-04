import Mathlib

/-!
Let S ⊂ ℝ^n be a subset. Prove that the shortest path from x to y in ℝ^n - S
is a polygon with corners on S whenever this makes sense.
This file gives a high-level formal statement of that assertion.
-/

open Set

theorem benmckay_top_topology_335 {n : ℕ} (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ) :
  -- whenever there exists a continuous path from x to y avoiding S
  (∃ γ : ℝ → Fin n → ℝ, ContinuousOn γ (Icc (0:ℝ) 1) ∧ γ 0 = x ∧ γ 1 = y ∧ range γ ⊆ univ \ S) →
  -- then (informally) a shortest such path, when it exists, can be taken to be polygonal
  -- with its corner vertices lying on S. Here we state the conclusion at a high level:
  ∃ (m : ℕ) (v : Fin (m+1) → Fin n → ℝ), (∀ i, v i ∈ S) := by sorry
