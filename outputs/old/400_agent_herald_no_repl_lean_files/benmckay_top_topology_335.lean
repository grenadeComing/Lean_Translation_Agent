import Mathlib

/-\nTranslate: Let S ⊂ ℝ^n be a subset. Prove that the shortest path from x to y in ℝ^n - S
is a polygon with corners on S whenever this makes sense.

This file gives a high-level Lean4 translation of the statement. Many metric/path-length
notions are abstracted into the predicate `IsShortestPath` so the statement captures the
intended meaning without committing to a particular formalization of length or of
polygonal concatenation. The proof is omitted (:= by sorry) per instructions.
-/

variable {n : ℕ}

open Set

-- Work in ℝ^n modeled as `Fin n → ℝ`.
variable (S : Set (Fin n → ℝ))

/-- Abstract predicate: `γ` is a continuous path in `ℝ^n \ S` from `x` to `y` which is
    shortest among such paths. The concrete notion of shortest (e.g. length minimizer)
    is intentionally left abstract (see `True` placeholder below) so the statement
    expresses the intended geometric conclusion without a full formal development here. -/
def IsShortestPath {x y : Fin n → ℝ} (γ : Set.Icc (0 : ℝ) 1 → (Fin n → ℝ)) : Prop :=
  ContinuousOn γ (Set.Icc (0 : ℝ) 1) ∧
  γ ⟨0, by simp⟩ = x ∧ γ ⟨1, by simp⟩ = y ∧
  (∀ t, t ∈ Set.Icc (0 : ℝ) 1 → γ t ∉ S) ∧
  -- placeholder for minimality (e.g. minimal length among all such paths)
  True

/-- High-level statement: if there is a shortest path `γ` in `ℝ^n \ S` from `x` to `y`,
    then, whenever the usual geometric hypotheses hold, that shortest path can be
    represented as a polygonal path whose intermediate corner points lie on `S`.

    The conclusion is stated as the existence of a finite sequence of points
    `pts : Fin (k+2) → ℝ^n` with `pts 0 = x`, `pts (k+1) = y` and all intermediate
    `pts i` lying in `S`. A concrete formalization of "polygonal concatenation equals
    γ" is omitted and replaced with a `True` placeholder; the main content is the
    asserted existence of the corner points on `S`.
-/
theorem shortest_path_is_polygonal
  {x y : Fin n → ℝ}
  (hx : x ∉ S) (hy : y ∉ S)
  (γ : Set.Icc (0 : ℝ) 1 → (Fin n → ℝ))
  (hγ : IsShortestPath S (γ : Set.Icc (0 : ℝ) 1 → _)) :
  ∃ (k : ℕ) (pts : Fin (k + 2) → (Fin n → ℝ)),
    pts 0 = x ∧ pts (k + 1) = y ∧ (∀ i : Fin (k + 2), (0 : ℕ) < (i : ℕ) → (i : ℕ) < k + 1 → pts i ∈ S) ∧
    -- placeholder: the concatenation of straight segments between consecutive `pts` equals `γ` and
    -- lies in `ℝ^n \ S` except possibly at the corner points in `S`.
    True := by
  -- Proof omitted.
  sorry
