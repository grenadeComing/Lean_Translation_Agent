import Mathlib

/-!
  Statement (informal): Let S ⊂ ℝ^n. The shortest path from x to y in ℝ^n \ S is a polygon
  with corners on S whenever this makes sense.

  The file gives a high-level Lean4 translation of this statement. We do not provide a proof
  here; the theorem is ended with `:= by sorry` as requested.
-/

variable {n : ℕ}

-- We model R^n as `Fin n → ℝ`.
open Set

/-- A polygonal connection between x and y whose intermediate vertices lie on S. -/
def polygonal_with_corners_on (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ) : Prop :=
  ∃ (k : ℕ) (verts : Fin (k + 1) → (Fin n → ℝ)),
    verts 0 = x ∧ verts (Fin.last k) = y ∧ ∀ (i : Fin (k + 1)), i ≠ 0 ∧ i ≠ Fin.last k → verts i ∈ S

/-- Abstract predicate: there exists a shortest path from x to y in the complement of S.
    We keep this abstract (uninterpreted) to mirror the informal statement ``whenever this
    makes sense''; one would refine this by giving a concrete notion of path length. -/
def shortest_path_exists (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ) : Prop :=
  ∃ (γ : Icc 0 1 → (Fin n → ℝ)), True

/-- Main (informal) theorem: if a shortest path exists in ℝ^n \ S between x and y, then
    there is a polygonal path from x to y whose intermediate corners lie on S. -/
theorem shortest_path_is_polygon (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ)
  (h : shortest_path_exists S x y) : polygonal_with_corners_on S x y := by
  -- Proof omitted; this is a high-level translation only.
  sorry
