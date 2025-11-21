import Mathlib

/-!
Formal translation (abstract):
Let S ⊆ ℝ^n. If γ is a continuous path from x to y in ℝ^n \ S which
minimizes length among such paths (with respect to a given length functional),
then γ is a polygonal path whose interior corner points lie on S.

The length functional and the polygonal predicate are left abstract; the
statement is given without proof (":= by sorry").
-/

variable {n : ℕ}

variable (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ)

/-- Abstract length functional on paths. -/
constant length_of_path : (ℝ → Fin n → ℝ) → ℝ

/-- A path γ : [0,1] → ℝ^n from x to y avoiding S on [0,1]. -/
def Path (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ) (γ : ℝ → Fin n → ℝ) : Prop :=
  ContinuousOn γ (Set.Icc (0 : ℝ) 1) ∧ γ 0 = x ∧ γ 1 = y ∧ ∀ t ∈ (Set.Icc (0 : ℝ) 1), γ t ∉ S

/-- γ is a shortest path among all such paths (w.r.t. length_of_path). -/
def IsShortestPath (S : Set (Fin n → ℝ)) (x y : Fin n → ℝ) (γ : ℝ → Fin n → ℝ) : Prop :=
  Path S x y γ ∧ ∀ δ, Path S x y δ → length_of_path δ ≥ length_of_path γ

/-- Abstract predicate: γ is polygonal with corner (vertex) points on S. -/
constant IsPolygonalWithCornersOnS : (ℝ → Fin n → ℝ) → Prop

/-- Main translated statement: any shortest path avoiding S is polygonal with
    corners on S. Proof omitted. -/
theorem shortest_path_is_polygonal {γ : ℝ → Fin n → ℝ}
  (hγ : IsShortestPath S x y γ) :
  IsPolygonalWithCornersOnS γ :=
  by sorry
