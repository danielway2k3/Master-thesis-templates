# Contributing to HCMUS Thesis Template

Thank you for your interest in contributing to the HCMUS Thesis Template! This document provides guidelines for contributing to this project.

## How to Contribute

### Reporting Issues

If you find a bug, formatting issue, or have a suggestion for improvement:

1. **Check existing issues** first to avoid duplicates
2. **Create a new issue** with a clear title and description
3. **Include details** such as:
   - LaTeX distribution and version
   - Operating system
   - Error messages (if any)
   - Expected vs actual behavior
   - Steps to reproduce the issue

### Suggesting Enhancements

For feature requests or enhancements:

1. **Check existing issues** to see if it's already been suggested
2. **Create a new issue** with the "enhancement" label
3. **Describe the enhancement** in detail
4. **Explain why** it would be beneficial
5. **Provide examples** if possible

### Code Contributions

#### Setting Up Development Environment

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/yourusername/hcmus-thesis-template.git
   cd hcmus-thesis-template
   ```
3. **Create a new branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### Making Changes

1. **Make your changes** in the appropriate files
2. **Test your changes** by building the document:
   ```bash
   make clean
   make
   ```
3. **Verify formatting** and ensure no errors
4. **Update documentation** if necessary

#### Submitting Changes

1. **Commit your changes** with clear, descriptive messages:
   ```bash
   git add .
   git commit -m "Add feature: brief description of changes"
   ```
2. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```
3. **Create a Pull Request** on GitHub

## Guidelines

### Code Style

- **LaTeX formatting**: Use consistent indentation and spacing
- **Comments**: Add comments for complex formatting or custom commands
- **File organization**: Keep files organized in appropriate directories
- **Naming conventions**: Use clear, descriptive names for files and labels

### Documentation

- **Update README**: If you add new features, update the README
- **Add examples**: Include usage examples for new features
- **Comment code**: Add comments for complex LaTeX code
- **Update changelog**: Add entries to CHANGELOG.md for significant changes

### Testing

- **Build test**: Ensure the document compiles without errors
- **Visual check**: Verify that formatting looks correct
- **Cross-references**: Check that all references work properly
- **Bibliography**: Ensure bibliography compiles correctly

### Commit Messages

Use clear, descriptive commit messages:

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **test**: Adding missing tests or correcting existing tests
- **chore**: Changes to the build process or auxiliary tools

Examples:
- `feat: add support for multiple supervisors`
- `fix: correct margin spacing in chapter headers`
- `docs: update installation instructions`
- `style: improve table formatting in chapter 2`

## Areas for Contribution

### High Priority

- **Formatting improvements**: Better spacing, fonts, or layout
- **Language support**: Improvements to Vietnamese language handling
- **Documentation**: Better examples and usage instructions
- **Build system**: Improvements to Makefile or build process

### Medium Priority

- **Additional templates**: Different thesis formats or layouts
- **Package updates**: Updating to newer LaTeX packages
- **Compatibility**: Ensuring compatibility with different LaTeX distributions
- **Accessibility**: Improving accessibility features

### Low Priority

- **Customization options**: Additional formatting options
- **Integration**: Integration with reference managers or other tools
- **Automation**: Additional automated features

## Questions?

If you have questions about contributing:

1. **Check the README** first
2. **Look at existing issues** for similar questions
3. **Create a new issue** with your question
4. **Be specific** about what you're trying to achieve

## Recognition

Contributors will be acknowledged in the README and CHANGELOG. Thank you for helping improve this template for the HCMUS community!

## License

By contributing to this project, you agree that your contributions will be licensed under the same Creative Commons Attribution-NonCommercial 4.0 International License that covers the project.
