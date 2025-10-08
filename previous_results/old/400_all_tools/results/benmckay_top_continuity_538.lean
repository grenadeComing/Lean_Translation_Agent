import Mathlib

/-- The closed unit interval as a subtype of ℝ. -/
def X := { x : ℝ // x ∈ Set.Icc (0 : ℝ) 1 }

/-- Topology on X induced from ℝ. -/
noncomputable instance : TopologicalSpace X :=
  TopologicalSpace.induced (fun a : X => (a.val : ℝ)) inferInstance

/-- The parametrisation of the unit circle by the interval. -/
noncomputable def f (t : X) : ℝ × ℝ :=
  (Real.cos (2 * Real.pi * t.val), Real.sin (2 * Real.pi * t.val))

/-- Equivalence relation on X identifying 0 and 1 and otherwise equality. -/
def r (a b : X) : Prop :=
  a = b ∨ (a.val = 0 ∧ b.val = 1) ∨ (a.val = 1 ∧ b.val = 0)

/-- We state (and admit) that r is an equivalence relation. -/
lemma r_equiv : Equivalence r := by
  -- admitted; the relation is clearly reflexive, symmetric and transitive
  sorry

/-- The corresponding setoid. -/
def s : Setoid X := ⟨r, r_equiv⟩

/-- The image of f (the unit circle in ℝ²). -/
def Y : Set (ℝ × ℝ) := Set.range (fun t : X => f t)

/-- Put the quotient/coinduced topology on the quotient type. -/
noncomputable instance : TopologicalSpace (Quotient s) :=
  TopologicalSpace.coinduced (Quotient.mk s) (inferInstance : TopologicalSpace X)

/-- The main statement: the quotient of the interval identifying 0 and 1 is
    homeomorphic to the image Y of the parametrisation f.  (Proof omitted.) -/
noncomputable def interval_quotient_homeo_circle :
  Homeomorph (Quotient s) ({ p : ℝ × ℝ // p ∈ Y }) := by
  -- The usual proof: f is continuous, constant only on {0,1}, so it descends to
  -- a continuous bijection from the quotient to Y with continuous inverse. We
  -- omit the details.
  sorry
