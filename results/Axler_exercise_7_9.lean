import Mathlib
open RCLike
open ComplexConjugate

/-- Prove that a normal operator on a complex inner-product space is self-adjoint if and only if all its eigenvalues are real. -/
theorem isSelfAdjoint_iff_eigenvalues_are_real {α : Type*} [RCLike α] [NormedAddCommGroup E]
    [InnerProductSpace α E] (f : E →ₗ[α] E) [FiniteDimensional α E] [CompleteSpace E]
    (isNormal : IsNormal f) : IsSelfAdjoint f ↔ ∀ a ∈ spectrum α f, IsReal a := sorry