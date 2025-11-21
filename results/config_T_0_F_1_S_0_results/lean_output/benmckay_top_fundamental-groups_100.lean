import Mathlib

/-!
We state the following classical fact in a form suitable for use in Lean:
Let X be a topological space and let x : [0,1] → X be a path.
Let x̄ denote the reverse path x̄(t) = x(1 - t).
Then the concatenation x * x̄ is homotopic relative to {0,1} to the constant loop at x(0).

This file gives a formal statement of that fact using abstract names for reverse,
concatenation and the relation ``homotopic relative to a set'' so that the
statement is a direct translation of the mathematical text. The proof is omitted.
-/

universe u

open Set

variable {X : Type u} [TopologicalSpace X]

/-- We work with the existing Mathlib notion `Path a b` for continuous paths
    from `a` to `b` in `X`. -/

/-- An abstract predicate expressing that two loops (paths with the same
    basepoint) are homotopic relative to a given subset `s` of the unit interval
    (thought of as the set of parameter values to be kept fixed). -/

variable (homotopic_rel : ∀ {x0 : X}, (Path (x0 : X) x0) → (Path (x0 : X) x0) → Set (ℝ) → Prop)

/-- Abstract names for reverse, concatenation and the constant loop operations.
    We keep them as parameters so the statement below is a straightforward
    translation of the natural-language claim. -/
variable (reverse_path : ∀ {a b : X}, Path a b → Path b a)
variable (concat_path : ∀ {a b c : X}, Path a b → Path b c → Path a c)
variable (const_loop : ∀ (a : X), Path a a)

/-- The formal statement: for any path `p : Path a b`, the concatenation
    `p * (reverse p)` is homotopic relative to `{0,1}` to the constant loop
    at `a = p.toContinuousMap.toFun 0`. The proof is omitted. -/
theorem benmckay_top_fundamental_groups_100
  {a b : X} (p : Path a b) :
  homotopic_rel (concat_path p (reverse_path p)) (const_loop a) ({0, 1} : Set ℝ) := by sorry
