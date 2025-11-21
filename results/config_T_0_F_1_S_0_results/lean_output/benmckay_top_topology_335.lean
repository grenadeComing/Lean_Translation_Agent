import Mathlib

variable (n : ℕ)

/-- R^n modeled as Fin n → ℝ. -/
def Rn : Type := Fin n → ℝ

/-- Abstract type of paths from x to y in R^n; details omitted. -/
constant Path : Rn → Rn → Type

/-- Predicate: γ is a shortest path from x to y contained in R^n \ S. -/
constant IsShortestPathInComplement (S : Set Rn) (x y : Rn) (γ : Path x y) : Prop

/-- Predicate: γ is polygonal and its corners lie in S. -/
constant IsPolygonalWithCornersOnS (S : Set Rn) (x y : Rn) (γ : Path x y) : Prop

/-- If γ is a shortest path from x to y in R^n \ S then γ is a polygon with corners on S.
    This is the statement only; the proof is omitted. -/
theorem shortest_path_is_polygon_with_corners_on_S {S : Set Rn} {x y : Rn} {γ : Path x y}
  (h : IsShortestPathInComplement S x y γ) : IsPolygonalWithCornersOnS S x y γ := by sorry
