import Mathlib

/-!
Translate the statement:
Let φ : P → Q be a smooth map of manifolds with dim P = dim Q.
Show that there is a dense set of points p0 ∈ P such that φ is a local diffeomorphism
in a neighborhood of each such p0.

The formalisation below expresses this in the usual manifold setting used in mathlib4:
we assume smooth manifolds modelled on finite-dimensional normed spaces over a
nontrivially normed field 𝕜. We state that if φ is globally smooth and there exists
at least one point where the derivative is invertible, then the set of points where
the derivative is invertible (hence φ is locally a diffeomorphism) is dense.

Note: the proof is omitted (``by sorry'') as requested; this file only contains the
formal statement.
-/

open Set

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F] [FiniteDimensional 𝕜 F]

variable {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]
variable {I : ModelWithCorners 𝕜 E P} {I' : ModelWithCorners 𝕜 F Q}
variable [SmoothManifoldWithCorners I P] [SmoothManifoldWithCorners I' Q]

/-- Main statement (no proof):
If φ : P → Q is smooth and the manifolds have the same model dimension, and
there exists at least one point where the differential is invertible, then the set
of points where the differential of φ is an isomorphism is dense; at each such
point φ is a local diffeomorphism on some neighborhood. -/
theorem benmckay_top_fundamental_groups_214 (φ : P → Q)
  (hφ : ContMDiff I I' ⊤ φ)
  (h_dim : FiniteDimensional.finrank 𝕜 E = FiniteDimensional.finrank 𝕜 F)
  (h_exists_regular : ∃ p, (fderiv 𝕜 φ p).IsLinearEquiv) :
  ∃ S : Set P,
    Dense S ∧
    ∀ p ∈ S, ∃ U : Set P, IsOpen U ∧ p ∈ U ∧ (LocalDiffeomorph I I' (φ) p) := by sorry