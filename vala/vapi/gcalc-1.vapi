/* gcalc-1.vapi generated by valac 0.46.1.87-af96b, do not modify. */

[CCode (gir_namespace = "GCalc", gir_version = "1")]
namespace GCalc {
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ExpressionContainer : Gee.ArrayList<GCalc.Expression>, GLib.ListModel {
		public ExpressionContainer ();
		public override bool add (GCalc.Expression exp);
		public GCalc.Expression? find (GCalc.Expression exp);
		public GCalc.Expression? find_named (string name);
		public GLib.Object? get_object (uint position);
		public override bool remove (GCalc.Expression exp);
		public override GCalc.Expression remove_at (int index);
		public weak GCalc.Expression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class ExpressionHashMap : Gee.HashMap<uint,GCalc.Expression> {
		public ExpressionHashMap ();
		public void add (GCalc.Expression exp);
		public GCalc.Expression? find_named (string name);
		public void remove (GCalc.Expression exp);
		public weak GCalc.Expression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GAssign : GCalc.GExpression, GCalc.Operator, GCalc.BinaryOperator, GCalc.Assign {
		public GAssign ();
		public override GCalc.Result solve ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GConstant : GCalc.GExpression, GCalc.Constant {
		public GConstant ();
		public GConstant.complex (global::double real, global::double imag);
		public GConstant.double (global::double val);
		public GConstant.integer (int val);
		public override GCalc.Result solve ();
		public GCalc.Constant subtract (GCalc.Constant c);
		public override string to_string ();
		public GConstant.unsigned_integer (uint val);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GDivision : GCalc.GExpression, GCalc.Operator, GCalc.BinaryOperator, GCalc.Division {
		public GDivision ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GErrorExpression : GCalc.GExpression, GCalc.ErrorExpression {
		public GErrorExpression ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GErrorResult : GLib.Object, GCalc.Result, GCalc.ErrorResult {
		public GErrorResult (string msg);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GExpression : GLib.Object, GCalc.Expression {
		public GExpression ();
		public virtual GCalc.Result solve ();
		public virtual string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunction : GCalc.GExpression, GCalc.Function, GCalc.Hashable {
		public GFunction ();
		public virtual GCalc.Expression evaluate () throws GLib.Error;
		public override string to_string ();
		public GFunction.with_name (string name, int nparams);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAcos : GCalc.GFunction {
		public GFunctionAcos ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAcosh : GCalc.GFunction {
		public GFunctionAcosh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAsin : GCalc.GFunction {
		public GFunctionAsin ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAsinh : GCalc.GFunction {
		public GFunctionAsinh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAtan : GCalc.GFunction {
		public GFunctionAtan ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionAtanh : GCalc.GFunction {
		public GFunctionAtanh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionCos : GCalc.GFunction {
		public GFunctionCos ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionCosh : GCalc.GFunction {
		public GFunctionCosh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionExp : GCalc.GFunction {
		public GFunctionExp ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionLog : GCalc.GFunction {
		public GFunctionLog ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionSin : GCalc.GFunction {
		public GFunctionSin ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionSinh : GCalc.GFunction {
		public GFunctionSinh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionSqrt : GCalc.GFunction {
		public GFunctionSqrt ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionTan : GCalc.GFunction {
		public GFunctionTan ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GFunctionTanh : GCalc.GFunction {
		public GFunctionTanh ();
		public override GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GGroup : GCalc.GExpression, GCalc.Group {
		public GGroup ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GMathEquation : GCalc.GExpression, GCalc.MathEquation {
		public GMathEquation ();
		public override GCalc.Result solve ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GMathEquationManager : GLib.Object, GCalc.MathEquationManager {
		public GMathEquationManager ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GMinus : GCalc.GExpression, GCalc.Operator, GCalc.BinaryOperator, GCalc.Minus {
		public GMinus ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GMultiply : GCalc.GExpression, GCalc.Operator, GCalc.BinaryOperator, GCalc.Multiply {
		public GMultiply ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GParser : GLib.Object {
		public enum TokenType {
			NONE,
			EOF,
			IDENTIFIER,
			INTEGER_LITERAL,
			REAL_LITERAL,
			STAR,
			PLUS,
			DIV,
			MINUS,
			ASSIGN,
			OPEN_PARENS,
			CLOSE_PARENS,
			CARRET,
			CLOSE_BRACE,
			CLOSE_BRACKET,
			OPEN_BRACE,
			OPEN_BRACKET,
			STRING_LITERAL,
			OP_AND,
			OP_COALESCING,
			OP_DEC,
			OP_EQ,
			OP_GE,
			OP_GT,
			OP_INC,
			OP_LE,
			OP_LT,
			OP_NE,
			OP_NEG,
			OP_OR,
			OP_PTR,
			OP_SHIFT_LEFT,
			SEMICOLON,
			TILDE,
			COLON,
			COMMA,
			DOUBLE_COLON,
			DOT,
			ELLIPSIS,
			INTERR,
			HASH
		}
		public GParser ();
		public void parse (string str, GCalc.MathEquationManager eqman) throws GLib.Error;
		public GCalc.GParser.TokenType read_token ();
		public string token_to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GPlus : GCalc.GExpression, GCalc.Operator, GCalc.BinaryOperator, GCalc.Plus {
		public GPlus ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GPolynomial : GCalc.GExpression, GCalc.Polynomial {
		public GPolynomial ();
		public override GCalc.Result solve ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GPow : GCalc.GExpression, GCalc.Operator, GCalc.Pow {
		public GPow ();
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GResult : GLib.Object, GCalc.Result {
		public GResult (GCalc.Expression exp);
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GSolver : GLib.Object, GCalc.Solver {
		public GSolver ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GTerm : GCalc.GExpression, GCalc.Term {
		public GTerm ();
		public override GCalc.Result solve ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public class GVariable : GCalc.GExpression, GCalc.Variable, GCalc.Hashable {
		public GVariable (string name);
		public override string to_string ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Assign : GLib.Object, GCalc.Expression, GCalc.Operator, GCalc.BinaryOperator {
		public GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface BinaryOperator : GLib.Object, GCalc.Expression, GCalc.Operator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Constant : GLib.Object, GCalc.Expression {
		public abstract GCalc.Constant add (GCalc.Constant c);
		public abstract GCalc.Constant divide (GCalc.Constant c);
		public abstract double imag ();
		public abstract GCalc.Constant multiply (GCalc.Constant c);
		public abstract GCalc.Constant neg ();
		public abstract GCalc.Constant pow (GCalc.Constant c);
		public abstract double real ();
		public abstract void zero ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Division : GLib.Object, GCalc.Expression, GCalc.Operator, GCalc.BinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface ErrorExpression : GLib.Object, GCalc.Expression {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface ErrorResult : GLib.Object, GCalc.Result {
		public abstract string message { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Expression : GLib.Object {
		public abstract GCalc.Result solve ();
		public abstract string to_string ();
		public abstract GCalc.ExpressionContainer expressions { get; }
		public abstract weak GCalc.Expression parent { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Function : GLib.Object, GCalc.Expression {
		public abstract GCalc.Expression evaluate () throws GLib.Error;
		public virtual bool verify_params () throws GLib.Error;
		public abstract bool closed { get; set; }
		public abstract uint n_params { get; set construct; }
		public abstract string name { get; set construct; }
		public abstract GCalc.ExpressionContainer param_types { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Group : GLib.Object, GCalc.Expression {
		public enum Level {
			ONE,
			TWO,
			THREE
		}
		public virtual GCalc.Expression evaluate () throws GLib.Error;
		public abstract bool closed { get; set; }
		public abstract GCalc.Group.Level level { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Hashable : GLib.Object {
		public abstract uint hash ();
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathEquation : GLib.Object, GCalc.Expression {
		public abstract GCalc.ExpressionHashMap variables { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface MathEquationManager : GLib.Object {
		public virtual GCalc.Variable find_variable (string name);
		public abstract GCalc.ExpressionContainer equations { get; }
		public abstract GCalc.ExpressionContainer functions { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Minus : GLib.Object, GCalc.Expression, GCalc.Operator, GCalc.BinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Multiply : GLib.Object, GCalc.Expression, GCalc.Operator, GCalc.BinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Operator : GLib.Object, GCalc.Expression {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Plus : GLib.Object, GCalc.Expression, GCalc.Operator, GCalc.BinaryOperator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Polynomial : GLib.Object, GCalc.Expression {
		public virtual GCalc.Expression evaluate () throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Pow : GLib.Object, GCalc.Expression, GCalc.Operator {
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Result : GLib.Object {
		public abstract string to_string ();
		public abstract GCalc.Expression expression { get; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Solver : GLib.Object {
		public abstract GCalc.Result solve (string str) throws GLib.Error;
		public abstract GCalc.MathEquationManager equation_manager { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Term : GLib.Object, GCalc.Expression {
		public virtual GCalc.Expression add (GCalc.Term t) throws GLib.Error;
		public virtual GCalc.Expression evaluate () throws GLib.Error;
		public static GCalc.Expression evaluate_constants (GCalc.Constant c1, GCalc.Constant c2, GCalc.Operator op) throws GLib.Error;
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public interface Variable : GLib.Object, GCalc.Expression {
		public virtual GCalc.Expression evaluate () throws GLib.Error;
		public abstract GCalc.Variable bind { get; set; }
		public virtual bool binded { get; }
		public abstract string name { get; set construct; }
		public abstract GCalc.Constant value { get; set; }
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain AssigError {
		INVALID_STRUCTURE_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain FunctionError {
		INVALID_PARAMETERS_ERROR,
		INVOCATION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain GroupError {
		INVALID_POLYNOMIAL,
		INVALID_INTERNAL_TERM
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain ParserError {
		INVALID_TOKEN_ERROR,
		INVALID_EXPRESSION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain SolverError {
		EXPRESSION_ERROR
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain TermError {
		INVALID_OPERATOR,
		EVALUATION_FAIL
	}
	[CCode (cheader_filename = "gcalc/gcalc.h")]
	public errordomain VariableError {
		INVALID_PARENT,
		INVALID_EXPRESSION_DEFINITION,
		EVALUATION_FAIL
	}
}
